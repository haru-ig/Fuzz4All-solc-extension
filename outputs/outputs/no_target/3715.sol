pragma solidity ^0.8.0;
contract W {
    uint d;
    function g() public returns (uint) {
        return W(address(this)).g();
    }
}

pragma solidity ^0.8.0;
constructor () public {}
contract Call {
    function call() public {

    }

}
pragma solidity ^0.8.0;
contract Bad {
    uint d;
    contract I {
        function g() public {

        }
        function call() public {

        }
    }
    function f() public {
        I(address(this)).g();
    }
}
pragma solidity ^0.8.0;
contract Good {
    uint d;
    function g() public returns (uint) {
        I(address(this)).log0();
        return 1;
    }
}

pragma solidity ^0.8.0;
contract Good {
     using this;
    uint d;
    function g() public returns (uint) {
        I(address(this)).g();
        return 1;
    }
}

pragma solidity ^0.8.0;
contract Good {
    uint d;
    function g() public returns (uint) {

        this.call();
        this.call();


        return 1;
    }
    function call() public {

    }
}
