JsOsaDAS1.001.00bplist00�Vscript_8var app = Application.currentApplication()
 
app.includeStandardAdditions = true

const obj = JSON.parse(app.read(Path("/Users/steveduval/Documents/Projects/ethereum_gas_notifier/tmp.json")))

if (obj.slow.gwei < 80) { 
app.displayNotification("", {
    withTitle: `Slow gas is ${obj.slow.gwei} gwei`,
    subtitle: "Gas in under 80: https://app.ens.domains/name/sloppypapi.eth/register",
    soundName: "Glass"
})
} else {
	app.displayNotification("", {
    withTitle: `Slow gas is ${obj.slow.gwei} gwei`,
    subtitle: "Gas is over 80",
    soundName: "Basso"
	})

}                              Njscr  ��ޭ