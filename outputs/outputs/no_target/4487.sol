pragma solidity ^0.8.0;
contract C {
    function myFunction() pure public returns (uint8 e) {
        unchecked {
            unchecked {
                if(true) {
                    e += 1;
                }
            }
        }
    }
}
contract A {
    function myFunction() public pure returns (uint8 e) {
        unchecked {
            unchecked {
                if(true) {
                    e += 1;
                }
            }
        }
    }
}

pragma solidity >0.5.0 <0.8.0;
contract C {
    function myFunction() pure public returns (uint8 e) {
        unchecked {
            if(true) {
                e += 1;
            }
        }
    }
}
contract A {
    function myFunction() public pure returns (uint8 e) {
        unchecked {
            if(true) {
                e += 1;
            }
        }
    }
}
