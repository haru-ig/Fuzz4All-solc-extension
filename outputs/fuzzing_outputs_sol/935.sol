pragma solidity ^0.8.0;
contract Caller {
    fallback () external payable {
        msg.sender <= 100;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    fallback () external payable { }
    fallback () external payable { }
}

pragma solidity ^0.8.0;
contract Caller {
    fallback () pure external { }
}

contract Caller is Caller {
    fallback () { }
}
