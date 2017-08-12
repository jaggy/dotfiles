<?php

class Color {
    function __construct($background, $highlight) {
        $this->background = $background;
        $this->highlight  = $highlight;}
}

class Tmux {
    function __construct () {
        $this->states = [
            'normal'  => new Color($background = '#005f5f', $highlight = '#008787'),
            'insert'  => new Color($background = '#5f0000', $highlight = '#a60000'),
            'replace' => new Color($background = '#000000', $highlight = '#333333'),
            'visual'  => new Color($background = '#005e89', $highlight = '#0085c3'),
        ];
    }

    function state ($state) {
        if (! array_key_exists($state, $this->states)) {
            throw new Exception;
        }

        $color = $this->states[$state];

        exec("tmux set-window-option -t $(tmux display-message -p '#S') window-status-bg '{$color->background}'");
        exec("tmux set-window-option -t $(tmux display-message -p '#S') status-bg '{$color->background}'");
        exec("tmux set-window-option -t $(tmux display-message -p '#S') window-status-current-bg '{$color->highlight}'");

        exec("tmux set-window-option -t $(tmux display-message -p '#S') status-fg white");
        exec("tmux set-window-option -t $(tmux display-message -p '#S') window-status-fg white");
        exec("tmux set-window-option -t $(tmux display-message -p '#S') window-status-current-fg white");
    }
}

(new Tmux)->state($argv[1]);