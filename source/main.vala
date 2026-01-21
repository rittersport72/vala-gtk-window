// Change upper or lower case
const string APP_ID = "org.rittersport72.UpperLower";
const uint16 WIDTH = 300;
const uint16 HEIGHT = 200;
const uint16 MARGIN = 10;

public class UpperLower : Gtk.Application {
    private Gtk.TextView textView;
    private Gtk.Button upperButton;
    private Gtk.Button lowerButton;
    
    public UpperLower() {
        Object(application_id: APP_ID);
    }
    
    public override void activate() {
        var window = new Gtk.ApplicationWindow(this) {
            title = "Change upper or lower case",
            default_width = WIDTH,
            default_height = HEIGHT,
        };
        
        upperButton = new Gtk.Button.with_label("Upper case") {
            margin_top = MARGIN,
            margin_bottom = MARGIN,
            margin_start = MARGIN,
            margin_end = MARGIN,
        };

        lowerButton = new Gtk.Button.with_label("Lower case") {
            margin_top = MARGIN,
            margin_bottom = MARGIN,
            margin_start = MARGIN,
            margin_end = MARGIN,
        };
        
        textView = new Gtk.TextView() {
            vexpand = true,
            margin_top = MARGIN,
            margin_bottom = MARGIN,
            margin_start = MARGIN,
            margin_end = MARGIN,
        };
        
        upperButton.clicked.connect (() => {
            stdout.printf("u clicked\n");
            //textView.get_buffer().get_bounds(start, end);
        });

        lowerButton.clicked.connect (() => {
            stdout.printf("l clicked\n"); 
        });
        
        var hbox = new Gtk.Box(Gtk.Orientation.HORIZONTAL, 5) {
            halign = Gtk.Align.CENTER,
        };
        hbox.append(upperButton);
        hbox.append(lowerButton);
        
        var vbox = new Gtk.Box(Gtk.Orientation.VERTICAL, 5);
        vbox.append(textView);
        vbox.append(hbox);
        
        window.child = vbox;
        window.present();
    }
    
    public static int main(string[] args) {
        var app = new UpperLower();
        return app.run(args);
    }
}
