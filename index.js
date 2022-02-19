const axios = require('axios')
const notifier = require('node-notifier')

axios.get('http://ethgas.watch/api/gas')
  .then(res => { 
    console.log('Status Code:', res.status)
    const gas = res.data
	if (gas.slow.gwei < 70) {
		console.log("Gas less than 70")
		notifier.notify({
			title: "Gas dropped below 70",
			message: "https://app.ens.domains/name/sloppypapi.eth/register",
			sound: 'Blow'
		})
	} else {
		console.log("Gas more than 70")
		notifier.notify({
			title: "Gas did not drop below 70",
			sound: 'Basso'
	})
	}
  })
  .catch(err => {
    console.log('Error: ', err.message);
  });
