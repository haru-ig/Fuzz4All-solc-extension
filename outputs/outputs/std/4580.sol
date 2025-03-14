pragma solidity ^0.8.0;
contract Multi is Array {
    uint[] internal array;
}

pragma solidity ^0.8.0;
contract Base {
    function func() public pure {
        return 42;
    }
}
contract Derived is Base {
    uint internal length;
    function length() public pure virtual {
        return length;
    }
}
contract Inheritance {
    function inherit() public pure {
        Derived d = new Derived();
        Derived x = new Derived();
        Derived ux = new Derived();
    }
}
