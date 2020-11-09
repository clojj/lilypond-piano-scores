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
  r2 d'4.( d8~ 
  d4) cis8 b a g fis e
  d2 b'4.( b8~
  b4)
}

rightTwo = \relative c'' {
  \global
  \skip2 d2
  \skip1
  \skip2 b
}

leftOne = \relative c' {
  \global
  r4 d8 cis8 b8 a8 g8 fis8
  e2 cis'2(
  cis4) b8 a g fis e d
  cis2
}

leftTwo = \relative c, {
  \global
  <d d' fis>1 \arpeggio \sustainOn
  a'2. \sustainOn g'4
  <b, fis'>1 \sustainOn
}

\score {
  \new PianoStaff \with {
    fontSize = #-0.6
  } <<
    \new Staff = "right" << \rightOne \\ \rightTwo >>
    \new Staff = "left" { \clef bass << \leftOne \\ \leftTwo >> }
  >>
  \layout { }
}
