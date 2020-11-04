\version "2.19.84"

global = {
  \key d \major
  \time 4/4
}

rightOne = \relative c'' {
  \global
    r2
    << { 
      \voiceOne d'4.^\sfp( d8^\p)( d4) 
       }
    \new Voice {
      \voiceTwo d,2( d4)
    }
    >>
    cis'8 b8 a8 g8 fis8 e8
}


leftOne = \relative c' {
  \global
  r4 d8 cis8 b8 a8 g8 fis8 
  e2
  
}

leftTwo = \relative c' {
  \global
  <d,, d' fis>1\arpeggio\sustainOn
  \relative <<
    { \voiceTwo a, }
    \new Voice {
      \voiceOne a'2.
    }
  >>
  
}


\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" << \rightOne >>
    \new Staff = "left" { \clef bass << \leftOne \\ \leftTwo >> }
  >>
  \layout { }
}
