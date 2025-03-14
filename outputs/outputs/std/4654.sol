pragma solidity ^0.8.0;
contract A {
    function g() public pure returns (uint256) {
        return 1143386069387545080;
    }
}

pragma solidity ^0.8.0;

contract A {

    contract B {
        function h() public pure returns (uint256) {
            return 4;
        }
    }


    function g() public pure returns (uint256) {
        return 2;
    }


    function h() public pure returns (uint256) {
        return g() + g() + g() + b().g();
    }
}

contract A {
    function b() public pure returns (I i) {
        i = new B();
    }

    function g() public pure returns (uint256) {
        return 1143386069387545080;
    }
}
