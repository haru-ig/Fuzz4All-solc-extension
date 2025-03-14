pragma solidity ^0.8.0;
contract C {
    function f() public {
        admin.transfer(_msgSender());
    }
}

pragma solidity ^0.8.0;
contract D {
    function d() public {
        C c;
        c.f();
    }
}

pragma solidity ^0.8.0;
contract E {
    function call() public payable {
        C c; c.f();
    }
}

pragma solidity ^0.8.0;
contract Test is D {
    function test() public payable {
        admin.transfer(_msgSender());
    }
}
