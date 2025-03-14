pragma solidity ^0.8.0;
contract C {
    uint[] arr;

    uint public x;
    function getX() public view returns (uint) {
        return x;
    }
}

pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
interface I{
    function getX() public view;
    function setX(uint y) external;
}


pragma solidity ^0.8.0;
interface I {
    function setX(uint y) external;
}
pragma solidity ^0.8.0;
interface I {
    function getX() public view;
}

pragma solidity ^0.8.0;
contract C {
    I public interface1;
    uint public x1;
    function setI1(I _interface1) public {
        interface1 = _interface1;
    }
    function getX1() public view returns(uint) {
        return iface1.getX();
    }
    function X1(uint _x1) public{
        x1 = _x1;
        interface1.setX(_x1);
    }
}

pragma solidity ^0.8.0;
contract C {
    I public interface1, interface2;
    uint public x1, x2;
    function setI2(I _interface1, I _interface2) public {
        interface1 = _interface1;
        interface2 = _interface2;
    }
    function setX(uint _x1, uint _x2) public {
        x1 = _x1;
        x2 = _x2;
    }
    function getX(I _x1) public view returns(uint) {
        return iface1.getX() + x2;
    }
    function getX1() public view returns(uint) {
        return x1;
    }
}
pragma solidity ^0.8.0;
contract C {
    I public interface1, interface2;
    uint public x1, x2;
    function setI2(I _interface1, I _interface2) public {
        interface1 = _interface1;
        interface2 = _interface2;
    }
    function setX(uint _x1, uint _x2) public {
        x1 = _x1;
        x2 = _x2;
    }
    function getX(I _x1) public view returns(uint) {
       return x1 + ( x2 * _x1 );
    }

    function setI1(I _interface1) public {
        iface1
