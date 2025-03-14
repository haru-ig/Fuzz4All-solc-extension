pragma solidity ^0.8.0;
interface Interface60 {
    function f(uint x) external view returns (bool);
}

pragma solidity ^0.8.0;


import './Interface60.sol';


library Lib102 {
    function f(uint, uint, uint) internal pure returns (bool) {

        if (inRange(1, "x", uint(1))) {

            if (inRange(0, "x", uint(0))) {

                return (true);
            } else {

                (
                _
                )
            );
            }
        } else {
            return (false);
        }
    }
}
