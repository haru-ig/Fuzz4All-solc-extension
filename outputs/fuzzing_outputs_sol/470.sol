pragma solidity ^0.8.0;
contract MutatedCaller6 {
    function mut(uint256 _index) payable external {}
}



pragma solidity ^0.8.0;
contract MutatedCaller8 {
    fallback () external payable {}
}


pragma solidity ^0.8.0;
library MutatedCallerLib {
    function mut(address _addr) payable external {
    }
}

pragma solidity ^0.8.0;
contract MutatedCaller9 {
    receive () payable external {
    }
}
