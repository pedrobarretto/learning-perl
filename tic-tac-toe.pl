use strict;
use warnings;

my @board     = ( ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' );
my $player    = 'X';
my $game_over = 0;

sub print_board {
    print "\n";
    print " $board[0] | $board[1] | $board[2] \n";
    print "---+---+---\n";
    print " $board[3] | $board[4] | $board[5] \n";
    print "---+---+---\n";
    print " $board[6] | $board[7] | $board[8] \n";
    print "\n";
}

sub check_win {
    my ($p) = @_;
    if ( $board[0] eq $p && $board[1] eq $p && $board[2] eq $p ) { return 1; }
    if ( $board[3] eq $p && $board[4] eq $p && $board[5] eq $p ) { return 1; }
    if ( $board[6] eq $p && $board[7] eq $p && $board[8] eq $p ) { return 1; }
    if ( $board[0] eq $p && $board[3] eq $p && $board[6] eq $p ) { return 1; }
    if ( $board[1] eq $p && $board[4] eq $p && $board[7] eq $p ) { return 1; }
    if ( $board[2] eq $p && $board[5] eq $p && $board[8] eq $p ) { return 1; }
    if ( $board[0] eq $p && $board[4] eq $p && $board[8] eq $p ) { return 1; }
    if ( $board[2] eq $p && $board[4] eq $p && $board[6] eq $p ) { return 1; }
    return 0;
}

sub make_move {
    my ($p) = @_;
    print "Player $p's turn.\n";
    print_board();
    my $valid_move = 0;
    while ( !$valid_move ) {
        print "Enter a move (1-9): ";
        my $move = <STDIN>;
        chomp $move;
        if ( $move >= 1 && $move <= 9 && $board[ $move - 1 ] eq ' ' ) {
            $board[ $move - 1 ] = $p;
            $valid_move = 1;
        }
        else {
            print "Invalid move.\n";
        }
    }
    if ( check_win($p) ) {
        print "Player $p wins!\n";
        $game_over = 1;
    }
    elsif ( !grep { $_ eq ' ' } @board ) {
        print "Tie game.\n";
        $game_over = 1;
    }
    else {
        $player = $p eq 'X' ? 'O' : 'X';
    }
}

while ( !$game_over ) {
    make_move($player);
}
