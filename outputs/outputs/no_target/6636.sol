pragma solidity ^0.8.0;
contract SimpleStore8 {
    function g() public view returns (uint256) {
        SimpleStore7 s;
        return s.f();
    }
}

pragma solidity ^0.8.0;
contract SimpleStore10 {
    function h() public view returns (uint256) {
        uint256 i = 1 << 32;
        return i.g();
    }
}


function toBytes32(bytes memory input) pure public returns (bytes32 result) {
    assembly {

        result := mload(add(input, 3))


    }
}
