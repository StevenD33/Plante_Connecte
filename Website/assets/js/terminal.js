var lines = document.querySelector(".lines");
var user = "Root$";
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
        addLine(`terminal: Negatif cette commande n'existe pas`);
        return;
    }

    var argumentsNeeded = command.arguments.filter(function(e) {
        return e.required;
    });
    if (commandArguments.length < argumentsNeeded) {
        addLine(`terminal: Négatif il te manque des arugments`);
    }

    if (commandArguments.length > command.arguments.length) {
        addLine(`terminal: Négatif il y'a trop d'arguments`);
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
        help: "C'est la commande d'aide :",
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
        help: "ça dit l'heure qu'il est !",
        arguments: [],
        exe: function() {
            var date = new Date();
            var time =
                date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
            addLine(`Server: Il est   ${time}`);
        }

    },
    {        name: "ConnectedFlowers",
        help: "Présentation de l'entreprise",
        arguments: [],
        exe: function() {
            addLine(`Server: Connected FLowers est une startup qui est composé de 3 personnes  `);
            addLine(`Server: Thibault Chef de projet et Ingénieur IOT  `);
            addLine(`Server: Lucas Administrateur de Base de Donnée  `);
            addLine(`Server: Steven DevWeb par ci par là mais pas ouf   `);


        },},
    {        name: "Projet",
        help: "Présentation du projet",
        arguments: [],
        exe: function() {
            addLine(`Server: L'objectif de ce projet est de créer une plante connecté qui communique avec une BDD   `);
            addLine(`Server: Et ensuite la BDD communique avec le site web  `);


        },},
    {        name: "SiteWeb",
        help: "Présentation du Site web ",
        arguments: [],
        exe: function() {
            addLine(`Server: Le site permet d'afficher les données de sa plante connecté et de voir en temps réel les changement `);
            addLine(`Server: Pour cela il faut d'abord s'inscrire avec un mot de passe FORT et chiffré en SHA512   `);


        },},
    {        name: "Hack",
        help: "Hack ",
        arguments: [],
        exe: function() {
            addLine(`Server: T'a vraiment cru que t'allais me pwned comme ça ? t'es vraiment naif `);
            addLine(`Server: Aller hop ça dégage   `);


        },}
];
