pragma solidity ^0.8.0;
contract MinerContract {
    function mine_while_bigger(uint a) public pure virtual returns (uint n) {
        if (a!= 0) {
            while (true) {
                n += 1;
                if (n >= a) {
                    break;
                }
            }
        }
    }
}
*/
