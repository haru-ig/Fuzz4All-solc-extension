pragma solidity ^0.8.0;
contract MutationFallback {
    function mutate() public {
        require(msg.payable, "Invalid call");
    }
}
contract MultipleMutationFallback {
    function mutate() public {
        require(msg.value > 0, "Invalid call");
    }
    function mutate2() public {
        require(msg.value > 0, "Invalid call");
    }
    function mutate3() public {
        require(msg.value > 0, "Invalid call");
    }
}
contract MultipleMutationFallbackBad {
    function mutate() public {
        require(msg.value > 0, "Invalid call");
    }
    function mutate2() public {
        require(msg.value > 0, "Invalid call");
    }
    function mutate3() public {
        require(msg.value > 0, "Invalid call");
    }
    function mutate4() public {
        require(msg.value > 0, "Invalid call");
    }
    function mutate5() public {
        require(msg.value > 0, "Invalid call");
    }
    function mutate6() public payable {
        require(msg.value > 0, "Invalid call");
    }
    function mutate7() public payable {
        require(msg.value > 0, "Invalid call");
    }
}
contract MultipleMutationFallbackBad2 {
    function mutate() public {
        require(msg.value > 0, "Invalid call");
    }
    function mutate2() public {
        require(msg.value > 0, "Invalid call");
    }
    function mutate3() public {
        require(msg.value > 0, "Invalid call");
    }
}
