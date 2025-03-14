pragma solidity ^0.8.0;
contract VotingTestContract {
    address public voterAddress;
    address public electionAddress;
    uint public _electionId;

    constructor() {
        voterAddress = msg.sender;
        electionAddress = msg.sender;
        _electionId = 1;
    }

    function wipeBc7() public {

        address newElection = bytes4(keccak256(abi.encodePacked("wipeBc7_", uint256(_electionId))));
        bytes memory data = abi.encodePacked(
            "call(address,uint256)",
            newElection,
            _electionId,
        );

        (bool success, bytes memory returnData) = voterAddress.call{value: 0}(data);

        require(success, "Failed to call contract");
    }


    function nextElection() public {
        _electionId = MutateWipeBc7._next();
    }


    function _setVoterAddress(address addr) public {
        require(voterAddress!= addr);


        bool success;
        (success, ) = voterAddress.call{value: 0}(abi.encodeWithSignature(
            "modifyAddress(address)",
            addr
        ));


        (success, ) = electionAddress.call{value: 0}(abi.encodeWithSignature(
            "setElectedAddress(address)",
            addr
        ));


        require(success, "Failed to call functions");

        voterAddress = addr;
    }


    function setNewVoteAddress(address addr) public {
        require(msg.sender == addr);


        bool success;
        (success, ) = voterAddress.call{value: 0}(abi.encodeWithSignature(
            "modifyAddress(address)",
            addr
        ));


        require(success, "Failed to call functions");

        voterAddress = addr;
    }
}
