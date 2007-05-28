use Test::More tests => 4;
use Test::use::ok;
use strict;
use warnings;

use ok qw(Text::Cloze);

my $text = <<'';
  Down, down, down.  There was nothing else to do, so Alice soon
  began talking again.  `Dinah'll miss me very much to-night, I
  should think!'  (Dinah was the cat.)  `I hope they'll remember
  her saucer of milk at tea-time.  Dinah my dear!  I wish you were
  down here with me!  There are no mice in the air, I'm afraid, but
  you might catch a bat, and that's very like a mouse, you know.
  But do cats eat bats, I wonder?'  And here Alice began to get
  rather sleepy, and went on saying to herself, in a dreamy sort of
  way, `Do cats eat bats?  Do cats eat bats?' and sometimes, `Do
  bats eat cats?' for, you see, as she couldn't answer either
  question, it didn't much matter which way she put it.  She felt
  that she was dozing off, and had just begun to dream that she
  was walking hand in hand with Dinah, and saying to her very
  earnestly, `Now, Dinah, tell me the truth:  did you ever eat a
  bat?' when suddenly, thump! thump! down she came upon a heap of
  sticks and dry leaves, and the fall was over.

my ($pre, $change, $post ) = Text::Cloze::change( $text, 1, 1 );

is $pre, q{  Down, down, down.}, q{pre correct};
is $change, q{  There was nothing else to do, so Alice soon
  began talking again.  `Dinah'll miss me very much to-night, I
  should think!'  (Dinah was the cat.)  `I hope they'll remember
  her saucer of milk at tea-time.  Dinah my dear!  I wish you were
  down here with me!  There are no mice in the air, I'm afraid, but
  you might catch a bat, and that's very like a mouse, you know.
  But do cats eat bats, I wonder?'  And here Alice began to get
  rather sleepy, and went on saying to herself, in a dreamy sort of
  way, `Do cats eat bats?  Do cats eat bats?' and sometimes, `Do
  bats eat cats?' for, you see, as she couldn't answer either
  question, it didn't much matter which way she put it.},
q{change correct};
is $post, q{  She felt
  that she was dozing off, and had just begun to dream that she
  was walking hand in hand with Dinah, and saying to her very
  earnestly, `Now, Dinah, tell me the truth:  did you ever eat a
  bat?' when suddenly, thump! thump! down she came upon a heap of
  sticks and dry leaves, and the fall was over.
}, q{post correct};
