public class AppName.MainWindow : Gtk.ApplicationWindow {
    public MainWindow (Gtk.Application application) {
        Object(
            application: application
        );
    }

    construct {
        title = "Example App Window";
        window_position = Gtk.WindowPosition.CENTER;
        set_default_size(800, 450);

        // Layout example from https://docs.elementary.io/develop/writing-apps/creating-layouts with a few changes.
        var grid = new Gtk.Grid ();
        grid.orientation = Gtk.Orientation.VERTICAL;
        grid.row_spacing = 6;

        var button = new Gtk.LinkButton.with_label ("https://www.youtube.com/watch?v=dQw4w9WgXcQ", "Click me!");

        grid.add (button);

        this.add(grid);
    }
}
