pragma solidity ^0.8.0;
contract Error1 {

    function error1() public pure returns (uint) {
        assembly {
            return 0xccccccccccccccccccccccccc0


        }
    }
}


pragma solidity ^0.8.0;
contract Error2 {

    function error1() public pure returns (uint) {
        assembly {
            return 0xccccccccccccccccccccccccc0


        }
    }
}


pragma solidity ^0.8.0;
contract Error3 {

    function error1() pure public returns (uint) {
        assembly {
            return 0xccccccccccccccccccccccffc0


        }
    }
}
