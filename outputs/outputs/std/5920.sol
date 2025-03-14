pragma solidity ^0.8.0;
contract SemanticEvidentChanges9 {
    uint256 x;
    address add;
    function setAdd(address _addr) public {
        x = 0;
        add = _addr;
    }
    function getAddr1() public view returns (address a) {
        require(x >= 0);

        uint[] memory array1 = new uint[](x + 1);
        for (uint i = 0; i < x; i++) {
            array1[i] = x;
        }

        return (add);
    }
}
contract SemanticEvidentChanges10 {
    uint256 x;
    address add;
    function setAdd(address _addr) public {
        x = 0;
        add = _addr;
    }
    function getAddr2() public view returns (address a) {
        require(x >= 0);
        a = ((uint256(x)))? add : ((uint256(x)) + add);
    }
}
contract SemanticEvidentChanges11 {
    uint256 x;
    address add;
    function setAdd(address _addr) public {
        add = _addr;
    }
    function getAddr3() public view returns (address a) {
        require(x >= 0);
        a = add;
    }
}
contract SemanticEvidentChanges12 {
    uint256 x;
    address add;
    function setAdd(address _addr) public {
        add = _addr;
    }
    function getAddr4() public view returns (address a) {
        require(x >= 0);
        a = add;
    }
}
contract SemanticEvidentChanges13 {
    uint256 x;
    address add;
    function setAdd(address _addr) public {
        add = _addr;
    }
    uint256 array1[10];

    uint256 array2[5];


    function setArray1(uint256 _index, uint256 _value) public {
        array1[_index] = _value;
    }
    function getArray1(uint256 _index) public view returns (uint256 x)
