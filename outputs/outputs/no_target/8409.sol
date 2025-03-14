pragma solidity ^0.8.0;
contract Unsafe2A {
    address a;
    uint8 _bts;
    uint _value;
    address _old;
}

pragma solidity ^0.8.0;
contract Unsafe2C {
    address a;
    uint8 _bts;
    uint _value;
    address _old;
    uint160 _old_contract;
}
contract Unsafe2D {
    address a;
    uint8 _bts;
    uint _value;
}

pragma solidity ^0.8.0;
contract Unsafe1C {
    function __constructor__() {}
    uint _i;
    uint16 _j;
}
pragma solidity ^0.8.0;
contract Unsafe1B {
    function __constructor__() {}
    uint _i;
    uint16 _j;
}
contract Unsafe1A {
    function __constructor__() {}
    uint _i;
    uint16 _j;
}
contract Unsafe1D {
    function __constructor__() {}
    uint _i;
    uint16 _j;
    uint16 _k;
}

pragma solidity ^0.8.0;
contract Unsafe1E {
    address _old;
    constructor() {
        _old = new Unsafe1C();
        _old = new UntrustedAlias(new Unsafe1A());
        _old = new Unsafe1D();
    }

    address _old_contract;
}

pragma solidity ^0.8.0;
contract Unsafe1F {
    constructor() {}
    uint _i;
}

pragma solidity ^0.8.0;
contract Unsafe1B {
    address a;
    uint8 _bts;
    uint _value;
    address _old;
    uint160 _old_contract;
    function constructor(uint j) public {
        a = new Unsafe1A();
        if(j == 0) {
            _old = a;
            _old_contract = a;
            return;
        }
        a = new Unsafe1B();
        _old = a;
        _old = a;
        _old_contract = a;
        return;
    }
}
pragma solidity ^0.8.0;
contract Unsafe1A {
    address a;
    uint8 _bts;
    uint _value;
    address _old;
    uint160 _old_contract;
    constructor() {}
