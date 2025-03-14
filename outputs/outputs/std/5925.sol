pragma solidity ^0.8.0;
contract SemanticEvidentChanges11 {
    int256 x;
    address add;
    function setAdd(address _addr) public {
        add = _addr;
    }
    function getAdd() public view returns (address a) {
        return (add);
    }
}
contract SemanticEvidentChanges12 {
    uint256 x;
    address add;
    function setAdd(address _addr) public {
        add = _addr;
    }
    function getAdd() public view returns (address a) {
        return (add);
    }
}
contract SemanticEvidentChanges13 {
    uint256 x;
    address add;
    function setAdd(address _addr) public {
        add = _addr;
    }
    function getAdd() public view returns (address a) {
        return (add);
    }
}

pragma solidity ^0.8.0;
contract SemanticEvidentChanges14 {
    int256 y;
    address[] a;
    function setA(address[] _addrA) public {
        a = _addrA;
    }
    function getA() public view returns (address[] a) {
        return (a);
    }
}
contract SemanticEvidentChanges15 {
    uint256 z;
    address[] b;
    function setB(address[] _addrB) public {
        b = _addrB;
    }
    function getB() public view returns (address[] b) {
        return (b);
    }
}
contract SemanticEvidentChanges16 {
    uint256 x;
    uint256 z;
    address[] a;
    address[] b;
    function setA(address[] _addrA) public {
        a = _addrA;
    }
    function setB(address[] _addrB) public {
        b = _addrB;
    }
    function getA() public view returns (address[] a) {
        return (a);
    }
    function getB() public view returns (address[] b) {
        return (b);
    }
}

pragma solidity ^0.8.0;
contract SemanticEvidentChanges17 {
    int256 z;
    uint256 x;
    uint256 y;
    function setX(uint256 _x) public {
        x = _x;
    }
    function setY(uint256 _y) public {
        y = _y;
    }
    function getX() public view returns (uint256 x) {
        return (x);
    }
    function getY()
