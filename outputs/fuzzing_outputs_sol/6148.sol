pragma solidity ^0.8.0;
contract MyEther {
    constructor() public {
    }
}
pragma solidity ^0.6.0;
contract MyEther {
    address admin;
    constructor() public {
        admin = msg.sender;
    }
    fallback () external payable {

    }
}
pragma solidity ^0.7.0;
contract MyEther {
    constructor() public {}
    receive() external payable {}
}
contract TestContract {
    constructor() public {
    }
    function test() public {
        MyEther a;
        a.test();
    }
}
