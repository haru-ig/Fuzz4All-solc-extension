pragma solidity ^0.8.0;
contract D {
        G public g;
     function change (uint s, uint c) public {
            unchecked {
                    int128 z2 = int128(c);
                    (z2 - s) == int128(2**127);
                    (s + z2 - 1) == int128(2**127);



            }
            g.change(s, c);
     }
}
