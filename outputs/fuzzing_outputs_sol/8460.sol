pragma solidity ^0.8.0;
contract CallerExample2 {
    constructor() payable {
    }

    fallback() payable {}
}

pragma solidity ^0.8.0;
library ModifierExample {
    modifier restricted(){
        require(msg.value > 0);
        _;
    }
}

pragma solidity ^0.8.0;
contract CallerExample3 {
    modifier restricted(){
        require(msg.value > 0);
        _;
    }

    modifier test() {
        msg.value = 2;
        _;
    }

    fallback() restricted public {
    }
}
