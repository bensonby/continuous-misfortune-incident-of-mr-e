rh-intro = \relative c' {
  \repeat unfold 8 { <bes d>16 f }
  \repeat unfold 8 { <bes c>16 f }
  \repeat unfold 8 { <f a>16 d }
  \repeat unfold 8 { <f bes>16 d }
}

rh-verse-A = \relative c' {
  \repeat unfold 8 { <bes d>16 f }
  \repeat unfold 8 { <bes c>16 f }
  \repeat unfold 8 { <f a>16 d }
  \repeat unfold 7 { <f a>16 d } <f bes> d
  \repeat unfold 8 { <bes' d>16 f }
  \repeat unfold 8 { <bes c>16 f }
  \repeat unfold 8 { <f a>16 d }
  \repeat unfold 4 { <f a>16 d }
  <f a>16 d q d <f bes> d <f d'> d

  \repeat unfold 8 { <bes' d>16 g }
  \repeat unfold 8 { <bes ees>16 g }
  \repeat unfold 8 { <bes ees f>16 f }
  <g bes ees>2 r
  R1
}

rh-chorus-A = \relative c'' {
  \clef treble
  \repeat unfold 8 { <bes d>16 g }
  \repeat unfold 8 { <bes c>16 ges }
  \repeat unfold 8 { <a c>16 f }
  \repeat unfold 6 { <a c>16 f } <bes d> f <bes ees> f
  <g bes ees>4 \repeat unfold 6 { d16 ees }
  \repeat unfold 3 { <a c>16 fis } q g fis ees d c bes8 <c ees>
  <a c>4 q <a ees'> <bes d> <aes c>4 d8 ees f g \tuplet 3/2 4 { aes8 bes c }

  \repeat unfold 8 { <bes d>16 g }
  q16 ges \repeat unfold 4 { <bes c>16 ges } <bes d> ges <bes ees> ges <aes f'>8~
  q4 q8 q~ q <aes ees'> <aes f'> <g b d>~
  q2 <b, d>4 <g b>
  <g d' ees>4. <d' ees bes'>8~ q2
  r4 <a' c> <ges bes des>2
}
