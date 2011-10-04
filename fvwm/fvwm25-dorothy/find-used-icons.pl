#!/usr/bin/perl

#@files = glob("*.{fvwm,decor}");
@files = glob("*.decor");
open(OUTLIST, ">icons-used");
while ($ARGV = shift @files) {
  open(IN, "$ARGV") || warn("Can't open $ARGV");
  while (<IN>) {
    if (/\.xpm/ || /\.png/) {
      $_ =~ s/([-\w]+\.*\w*\.(xpm|png))//;
      $x = $1;
      print OUTLIST "$x\n";
      $_ =~ s/([-\w]+\.*\w*\.(xpm|png))//;
      $x = $1;
      print OUTLIST "$x\n";
      $xpm{$x} = $x;
    }
  }
  close IN;
}
close OUTLIST;

`sort -u icons-used > tmp; mv tmp icons-used`;
print STDERR "Created icons-used\n";

