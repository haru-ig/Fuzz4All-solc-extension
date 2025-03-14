pragma solidity ^0.8.0;
contract C22 {
    receive () external payable {}
}

pragma solidity ^0.8.0;
contract C23 {
    function f() external payable {}
    receive () external payable {}
}

pragma solidity ^0.8.0;
contract C24 {
    struct Data {
        Data (address t) { addressToTransferTo.value; }
        mapping(address=>addressToTransferTo.value) public addressToTransferTo;
    }
    function callFor (address x) {
        x.transferFunds(1);
    }
    receive () public payable {
        callFor (msg.sender);
    }
}
contract C2 {
    receive () external payable {}
}

pragma solidity ^0.8.0;
contract C41 {


    address to_C20_t;
    function set_to_C20_t (address t) public { to_C20_t = t; }

    fallback () external payable {
        require (msg.sender == to_C20_t);
        msg.sender.write();
    }
}
contract C4 {
    function callFor () {
        msg.sender.transferFunds(1);
    }
    receive () public payable {
        callFor ();
    }
}

pragma solidity ^0.8.0;
contract C3 {
    function transferFunds (uint256 n) public {
        (uint256 f).value(n)();
    }
}

pragma solidity ^0.8.0;
contract C42 {
    struct Data { uint8 storageField = 5; }
    function testThrow () public {
        Data d;
        d.storageField.value(1)();
    }
    receive () public payable {
        testThrow();
    }
}
contract C43 {
    struct Data {
        struct Storage { uint[20] storageFields; }
        Storage storageFields;
    }

    function read (uint n) public {
        Storage storage;
        for (uint i = 1; i <= n; ++i) { storage.storageFields[i].value(i); }
        emit (uint[n]);
    }

    receive () public payable {
        read (1);
    }
}
contract Data {
    function transferFunds (uint256 n) public { uint8 s = 5; s.value(n); emit (); }
}
