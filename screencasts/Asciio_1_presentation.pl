sub box
{
my ($x, $y, $title, $text, $select) = @_ ;

return
	sub
		{
		my ($self) = @_ ;

		my $element = $self->add_new_element_named('stencils/asciio/box', $x, $y) ;

		$element->set_text($title, $text) ;

		$self->select_elements($select, $element) ;
		
		return $element ;
		} ;
}

sub clear_all
{
return 
	sub
		{
		my ($self) = @_ ;
		$self->run_actions_by_name('Select all elements', 'Delete selected elements') ;
		} ;
}

sub compose
{
my (@elements) = @_ ;

return
	sub
		{
		my ($self) = @_ ;
		
		for my $element (@elements) 
			{
			$element->($self) ;
			}
		} ;
}

sub new_slide_single_box_at
{
my ($x_,$y, $text) = @_ ;

return 
	compose
		(
		clear_all(),
		box($x_,$y, '', $text, 1),
		) ;
}

[

new_slide_single_box_at(13, 10,
<<EOT,
Free music: Bassline Research Institute - Agnostic

Open source application: Asciio 1.00

Desktop session recorder: recordMyDesktop

EOT
),

(
map 
	{
	new_slide_single_box_at(0, 0, $_) ;
	}
	( 
"Getting Help: press 'F1'", 

"What's the keyboard mapping? press 'K'",

<<EOT,
Saving an ASCII file:  press ctl + s (or use the context menu)

Use a '.txt' file extension
EOT

"Copy selected element to clipboard: press ctl + e",

<<EOT,
New stencils and new stencil format
EOT

"Diagonal lines",

"Prepend section to multi wirl, press alt + s",
"Remove first section from multi wirl arrow, press alt + q",
"Remove last multi-wirl section, press q",

"Context menu to activate/deactivate wirl arrow connectors",

"Arrow can be connected anywhere (but modifying box removes connection)",
"Box object, invisible, border connectors",

"Vertical text",

"Auto shrink",

"Quick link now keeps the start element selected and reuses it",

<<EOT,
External command output insertion 
   (figlet -f /usr/share/figlet/larry3d.flf Asciio)"
EOT
	)
),


new_slide_single_box_at(19, 11,
<<'EOT',

(\_/)
(O.o) ASCII world domination is near!
(> <) 

EOT
),
	
] ;	

