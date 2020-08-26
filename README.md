GUI inspect of kmom
=====================================



Install
-------------------------------------

Prepare a course repo to work in.

```
dbwebb clone <courserepo>
cd <courserepo>
make install # If you want to do local inspects
```

Go to your course repo and clone this repo into it.

```
git clone https://github.com/dbwebb-se/inspect-gui.git
```

Start the gui.

```
./inspect-gui/gui.bash
```



Configuration file
-------------------------------------

Create a configuration file `$HOME/.dbwebb/gui_config.bash` by using the gui > Admin menu > Create a default configuration file.

Or copy it like this.

```
install -d "$HOME/.dbwebb"
cp -i inspect-gui/gui_config.bash "$HOME/.dbwebb"
```

Open your configuration file in a texteditor and customize it.



Log files
-------------------------------------

Log files are written to the root of the course repo at `.log/inspect`. They are rewritten at each run.

| Log file | What |
|----------|------|
| `gui-feedback.ansi` | Feedback text
| `gui-inspect.ansi` | Output from `dbwebb inspect`
| `gui-main.ansi` | Main output from the execution

Install a plugin to your texteditor to show these files with the color formatting.

I usually have these files open in my texteditor while using the gui.

You could also do tail on the inspect log file in the terminal.

```
tail -f .log/inspect/gui-inspect.ansi
```


<!--
Configure a course repo
-------------------------------------

This is how to configure a course repo to use the gui.

TBD
-->



```
 .
..:  Copyright (c) 2019-2020 dbwebb et al, info@dbwebb.se
```
