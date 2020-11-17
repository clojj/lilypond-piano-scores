\version "2.20.0"

\header {
  title = "Entrée de Polymnie"
  subtitle = "Transcription for Piano"
  composer = "Jean Philippe Rameau"
}

global = {
  \key d \major
  \time 4/4
}

rightOne = \relative c'' {
  \global
  r2 d'4.~ d8~ 		| % measure 1
  d4 cis8 b a g fis e	| % measure 2
  d2 b'4.~ b8~		| % measure 3
  b4
}

rightTwo = \relative c'' {
  \global
  \skip2 d2~		| % measure 1
  d4 \skip2.		| % measure 2
  \skip2 b2~		| % measure 3
  b4
}

leftOne = \relative c' {
  \global
  r4 d8 cis8 b8 a8 g8 fis8
  e2 cis'2~
  cis4 b8 a g fis e d
  cis2 a'2~
  a4 g8 fis e d cis b
  \break a2
}

leftTwo = \relative c {
  \global
  \skip1
  \skip2.
  g'4
  \shape #'((0 . 0) (0 . -0.5) (0 . -0.7) (0 . 0)) Tie
  fis1~
  \shape #'((0.4 . 0.2) (0 . -0.5) (0 . -0.7) (0 . 0)) Tie
  fis~
  fis2 \shape #'((0 . 0) (0 . -1.0) (0 . -1.0) (0 . 0)) Tie e2~
  e2
}

leftThree = \relative c, {
  \global
  <d d' fis>1 \arpeggio \sustainOn
  a'1 \sustainOn
  b1 \sustainOn % TODO lower Y
  fis
  g
}

\score {
  \new PianoStaff \with {
    fontSize = #-1
  } <<
    \new Staff = "right" << \rightOne \\ \rightTwo >>
    \new Staff = "left" { \clef bass << \leftOne \\ \leftTwo \leftThree >> }
  >>
  \layout { }
}
