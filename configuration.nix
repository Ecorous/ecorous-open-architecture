{
    imports = [
        ./modules/system.nix
    ];
    #networking = {
    #    hostName = "ecorous-nixos"
    #};
    # set in ./modules/system.nix
    services.dunst = {
        enable = true;
        settings = ''
            # See dunst(5) for all configuration options

            [global]
            ### Display ###

            # Which monitor should the notifications be displayed on.
            monitor = 0

            # Display notification on focused monitor.  Possible modes are:
            #   mouse: follow mouse pointer
            #   keyboard: follow window with keyboard focus
            #   none: don't follow anything
            #
            # "keyboard" needs a window manager that exports the
            # _NET_ACTIVE_WINDOW property.
            # This should be the case for almost all modern window managers.
            #
            # If this option is set to mouse or keyboard, the monitor option
            # will be ignored.
            follow = none
        
            ### Geometry ###
        
            # dynamic width from 0 to 300
            # width = (0, 300)
            # constant width of 300
            width = 300

            # The maximum height of a single notification, excluding the frame.
            height = 300

            # Position the notification in the top right corner
            origin = top-right

            # Offset from the origin
            offset = 10x50

            # Scale factor. It is auto-detected if value is 0.
            scale = 10

            # Maximum number of notification (0 means no limit)
            notification_limit = 0

            ### Progress bar ###

            # Turn on the progess bar. It appears when a progress hint is passed with
            # for example dunstify -h int:value:12
            progress_bar = true

            # Set the progress bar height. This includes the frame, so make sure
            # it's at least twice as big as the frame width.
            progress_bar_height = 10

            # Set the frame width of the progress bar
            progress_bar_frame_width = 1

            # Set the minimum width for the progress bar
            progress_bar_min_width = 150

            # Set the maximum width for the progress bar
            progress_bar_max_width = 300


            # Show how many messages are currently hidden (because of
            # notification_limit).
            indicate_hidden = yes
        
            # The transparency of the window.  Range: [0; 100].
            # This option will only work if a compositing window manager is
            # present (e.g. xcompmgr, compiz, etc.). (X11 only)
            transparency = 0

            # Draw a line of "separator_height" pixel height between two
            # notifications.
            # Set to 0 to disable.
            # If gap_size is greater than 0, this setting will be ignored.
            separator_height = 2

            # Padding between text and separator.
            padding = 8

            # Horizontal padding.
            horizontal_padding = 8

            # Padding between text and icon.
            text_icon_padding = 0
        
            # Defines width in pixels of frame around the notification window.
            # Set to 0 to disable.
            frame_width = 3
        
            # Defines color of the frame around the notification window.
            frame_color = "#aaaaaa"

            gap_size = 0

            separator_color = frame
        
            # Sort messages by urgency.
            sort = yes

            ### Text ###

            font = Manrope 12

            # The spacing between lines.  If the height is smaller than the
            # font height, it will get raised to the font height.
            line_height = 0

            markup = full
        
            format = "<i>%a</i>\n<b>%s</b>\n%b"

            alignment = left

            # Possible values are "top", "center" and "bottom".
            vertical_alignment = center
    
            # Show age of message if message is older than show_age_threshold
            # seconds.
            # Set to -1 to disable.
            show_age_threshold = 60
    
            # Specify where to make an ellipsis in long lines.
            # Possible values are "start", "middle" and "end".
            ellipsize = middle
    
            # Ignore newlines '\n' in notifications.
            ignore_newline = no
    
            # Stack together notifications with the same content
            stack_duplicates = true
    
            # Hide the count of stacked notifications with the same content
            hide_duplicate_count = false
        
            # Display indicators for URLs (U) and actions (A).
            show_indicators = yes
    
            ### Icons ###

            # Recursive icon lookup. You can set a single theme, instead of having to
            # define all lookup paths.
            enable_recursive_icon_lookup = true

            # Set icon theme (only used for recursive icon lookup)
            icon_theme = Adwaita
            # You can also set multiple icon themes, with the leftmost one being used first.
            # icon_theme = "Adwaita, breeze"
    
            # Align icons left/right/top/off
            icon_position = left
    
            # Scale small icons up to this size, set to 0 to disable. Helpful
            # for e.g. small files or high-dpi screens. In case of conflict,
            # max_icon_size takes precedence over this.
            min_icon_size = 32

            # Scale larger icons down to this size, set to 0 to disable
            max_icon_size = 128
    
            # Paths to default icons (only neccesary when not using recursive icon lookup)
            icon_path = /usr/share/icons/gnome/16x16/status/:/usr/share/icons/gnome/16x16/devices/
        
            ### History ###

            # Should a notification popped up from history be sticky or timeout
            # as if it would normally do.
            sticky_history = yes

            # Maximum amount of notifications kept in history
            history_length = 20

            ### Misc/Advanced ###

            # dmenu path.
            dmenu = /usr/bin/dmenu -p dunst:

            # Browser for opening urls in context menu.
            browser = /usr/bin/xdg-open

            # Always run rule-defined scripts, even if the notification is suppressed
            always_run_script = true

            # Define the title of the windows spawned by dunst
            title = Dunst (Notification)

            # Define the class of the windows spawned by dunst
            class = Dunst

            corner_radius = 0

            ignore_dbusclose = false

            force_xwayland = false

            force_xinerama = false

            # will be executed in sequence.
            mouse_left_click = close_current
            mouse_middle_click = do_action, close_current
            mouse_right_click = close_all

            [experimental]
            per_monitor_dpi = false

            [global]
            frame_color = "#8AADF4"
            separator_color= frame

            [urgency_low]
            background = "#24273A"
            foreground = "#CAD3F5"
    
            [urgency_normal]
            background = "#24273A"
            foreground = "#CAD3F5"
    
            [urgency_critical]
            background = "#24273A"
            foreground = "#CAD3F5"
            frame_color = "#F5A97F"
            # vim: ft=cfg
        '';
    };
}