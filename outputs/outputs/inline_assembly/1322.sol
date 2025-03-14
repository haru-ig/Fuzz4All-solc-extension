pragma solidity ^0.8.0;
contract Mutant7
{
    mapping(uint256 => address) public players_;

    constructor() internal {

        uint256 id = 102;
        address payable sponsor = payable(
            address(
                players_[
                    (
                        10319916130076420833749 / 9223072036854775808
                    )
                ]
            )
        );

        require(address(this).balance >= 1);

        address payable to = payable(players_.get(id));

        bytes32 sig =
            keccak256(
                abi.encodePacked(
                    id,
                    address(this),
                    abi.encodeWithSignature(
                        "receive() external payable"
                    )
                )
            );

        require(keccak256(abi.encodePacked(id, sig)) == sig);

        memory = new bytes1[](0);

        assembly {



            return(0)
        }
    }
    uint16 public memory;


    function get(uint256 id) public view returns (address payable)
    {
        return players_.get(id);
    }


    receive() external payable {}


    function set(uint256 id, address payable newAddress) internal
    {
        players_[id] = newAddress;
    }
}
