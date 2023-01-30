
use strict ;
use warnings ;

use App::Asciio::Utils::Presentation ;

# slides in an array reference
[ 

new_slide_single_box_at(15, 10,<<EOT),
Free music: Bassline Research Institute - Seen

Open source application: Asciio 1.50

Desktop session recorder: recordMyDesktop

EOT

new_slide_single_box_at(0, 0, "what's new in version 1.50?"),

new_slide_single_box_at(0, 0, <<EOT) ,
Divers
  * new format for the asciio stencils
    - the stencils are under setup/stencils
    - Asciio's stencil is  'setup/stencils/asciio'
    - should be easier to modify by end user
    
  * removed author tests dependencies from the installation 
  
  * windows size is saved with the diagram
  
  * GTK code split away
  * help needed to implement a Curses based Asciio
  
EOT

new_slide_single_box_at(0, 0, <<EOT,) ,
Presentation mode
  * was already in the previous version of Asciio
  * a presentation is a list of 'slides'
  
  * load slides: CTL + l
  * navigation 
    - next slides: CTL + right arrow
    - previous slide: CTL + left arrow
    
  * once a slide is loaded, you can use Asciio normaly
  
  * example in 'documentation/presentation.pl'

  * each slide is a mini scipt
  * a slide can load an asciio diagram

EOT

load_diagram(0, 0, 'divers_examples/vertical_tree.asciio'),

new_slide_single_box_at(0, 0, 'Default box made smaller (shortcut: b)'), 
new_slide_single_box_at(0, 0, 'Disable auto connect to box element'),

new_slide_single_box_at(0, 0, "Selection that doesn't take arrows (middle button)"), 
new_slide_single_box_at(0, 0, <<EOT),
Temporary move to front (shortcut: alt + f)
  * more useful than one could think
  * great when using angled arrows
  * demo
  
EOT

new_slide_single_box_at(0, 0, 'Insert section in middle of multi wirl arrow (shortcut: shift + S)'),

new_slide_single_box_at(0, 0, <<EOT),
Angled arrow (shortcut: shift + A)
  * does not do autoconnect
  * direction can be changed
  * it wirls too
  * has terminators
  * demo
  * example
  
EOT

load_diagram(0, 0, 'divers_examples/angled_arrow_example_two.asciio'),

new_slide_single_box_at(0, 0, 'Multiple box/text take \n as separator (shortcut: CTL + shift + M)'),

new_slide_single_box_at(0, 0, 'Insert file (shortcut: CTL + i)'),

new_slide_single_box_at(15, 5, <<'EOT'),
Tell me about you!
  * what platform do you run Asciio on?
  * was it easy to install?
  
  * what do you use it for?
  * send me your examples and screenshots
  
  * what would you like to see in the next version?

  * mail to nkh@cpan.org"


       (\_/)
       (O.o) ASCII world domination is near!
       (> <) 
       
EOT

] ;	

