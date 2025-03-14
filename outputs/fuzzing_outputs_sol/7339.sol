pragma solidity ^0.8.0;


contract Fallback {
    receive() external payable {}
}


contract MultiFallback {
    fallback () public payable {
    }

    function() external payable {
    }

    fallback () public payable {
    }

    function() external payable {
    }

    fallback() external payable {
    }

    function() external payable {
    }

    fallback () public payable {
    }

    function() external payable {
    }

    fallback() public payable {
    }

    fallback() public {
    }
}
