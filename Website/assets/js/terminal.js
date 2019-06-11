var lines = document.querySelector(".lines");
var user = "workstation$";
document.addEventListener("keyup", keyup);
function keyup(e) {
    if (e.srcElement.type == "text") {
        var input = e.srcElement;
        var text = input.value;

        if (e.key == "Enter") {
            input.value = "";
            addLine(`${user}: ${text}`);
            if (text.length) parseCommand(text);
        }
    }
}

function addLine(text) {
    lines.innerHTML += `<div class="line">${text}</div>`;
    lines.scrollTo(0, lines.scrollHeight);
}

function parseCommand(text) {
    var split = text.split(" ");
    var commandName = split[0];
    var commandArguments = split.splice(1, split.length);
    var command = commands.find(function(e) {
        return e.name == commandName;
    });
    console.log(arguments);

    if (!command) {
        addLine(`terminal: command not found`);
        return;
    }

    var argumentsNeeded = command.arguments.filter(function(e) {
        return e.required;
    });
    if (commandArguments.length < argumentsNeeded) {
        addLine(`terminal: you might be missing arguments`);
    }

    if (commandArguments.length > command.arguments.length) {
        addLine(`terminal: you might have put to many arguments`);
    }

    command.exe(commandArguments);
}

function findCommand(commandName) {
    return commands.find(function(e) {
        return e.name == commandName;
    });
}

var commands = [
    {
        name: "help",
        help: "This is the help command :]",
        arguments: [
            {
                required: false,
                name: "commandName",
                help: "type the name of the command. type commands"
            }
        ],
        exe: function(commandArguments) {
            if (commandArguments.length == 0) {
                addLine(
                    "use <info>help [commandName]</info> to get info about a command"
                );
                addLine("");
                for (var command of commands) {
                    var helpText = command.name;
                    for (var argument of command.arguments) {
                        helpText += ` <info>[${argument.name}]</info>`;
                    }
                    addLine(helpText);
                }
            }

            if (commandArguments.length > 0) {
                var commandName = commandArguments[0];
                var command = findCommand(commandName);
                if (!command) {
                    addLine("command not found: " + commandName);
                }
                addLine(`description: ${command.help}`);
                for (var arg in command.arguments) {
                    addLine(
                        `<info>[${arg}]</info>: ${command.arguments[arg].name} - ${
                            command.arguments[arg].help
                            }`
                    );
                }
            }
        }
    },
    {
        name: "time",
        help: "Tells you the current time!",
        arguments: [],
        exe: function() {
            var date = new Date();
            var time =
                date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
            addLine(`terminal: ça dit l'heure qu'il est  ${time}`);
        }

    },
    {        name: "ConnectedFlowers",
        help: "Présentation de l'entreprise",
        arguments: [],
        exe: function() {
            addLine(`terminal: Connected FLowers est une startup qui est composé de 3 personnes : `);
            addLine(`terminal: Thibault Chef de projet et Ingénieur IOT : `);
            addLine(`terminal: Lucas Administrateur de Base de Donnée  : `);
            addLine(`terminal: Steven DevWeb par ci par là mais pas ouf  : `);


        },}
];
