pragma solidity ^0.8.0;
library Ownable6 {
    function owner() internal view returns (address) {
        return msg.sender;
    }

    modifier onlyOwner() {
        require(isOwner());
        _;
    }

    function isOwner() public view returns (bool) {
        return msg.sender == owner();
    }
}

pragma solidity ^0.8.0;
contract Malicious {
    function call3(address addr1, uint32 a) public {
        (bool success, ) = addr1.call{ value : uint32(990 * (10**uint256(a))) }("");
        require(success);
        (, ) = addr1.call{ value : uint32(8900 * (10**uint256(a))) }("");
        require(success);
    }
}

pragma solidity ^0.8.0;
contract Malicious2 extends Ownable6 {
    uint a;

    function call3(address f1, address addr1, uint32 a) public {
        (bool success1, ) = f1.call{ value : uint32(2 * 10**uint256(a)) }("");
        require(success1);
        (, ) = f1.call{ value : uint32(200 * (40**uint256(a))) }("");
        require(success1);
        (, ) = f1.call{ value : uint32(2 * 20**uint256(a))) }("");


        require(success1);
    }
}
