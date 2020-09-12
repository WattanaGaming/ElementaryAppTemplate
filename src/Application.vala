public class AppName.Application : Gtk.Application {
    public Application () {
        Object (
            application_id: "com.github.yourgithubusername.appreponame",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var MainWin = new AppName.MainWindow(this);
        MainWin.show_all ();
    }

    public static int main (string[] args) {
        return new AppName.Application ().run (args);
    }
}
