pragma solidity ^0.8.0;
contract ArrayModifies {
    uint256[] public _array;
    uint256 _b;
    (uint256 r,) = abi.decode(_array, (uint256, uint256));


    function updateArray() public {
        _b = 2;
        a.length = _b;
    }

    function getDynamicArray() public view returns (uint256[] memory) {
        return _array;
    }

}

library ArrayLibrary {

function mod(uint256 _a, uint256 _b) internal pure returns (uint256) {
        return _a - uint256(_a / _b) * _b;
}

    uint256[] public a;
    function modifyA() public {
        a.append(7);
        a.append(a.length);
    }

    function updateArray() public {
        a.append(a.length);
        uint256 y;
        uint256[] memory z;
        z = a;
        a[a.length]= 9;
        a.length = a.length + 1;
    }
}
