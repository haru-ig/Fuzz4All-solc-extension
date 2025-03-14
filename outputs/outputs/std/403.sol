pragma solidity ^0.8.0;

contract Test {
    string[] public names;
    bytes[] public random_names;
    bytes32 public random_names_hash;

    function create_names() public {
        names.push("Larry");
        names.push("Bird");
        names.push("Daphne");
        names.push("Curly");
    }

    function set_random_names() public {
        random_names.push("Alice");
        random_names.push("Bob");
        random_names.push("Cat");
        random_names.push("Dino");
    }

    function find_names() public {
        set_random_names();

        random_names_hash = keccak256(abi.encodePacked(random_names));

        for(uint256 i = 0; i <names.length; i ++) {
            Assert.equal(keccak256(abi.encodePacked(names[i])),
                keccak256(abi.encodePacked(random_names[i])));
        }

        uint256 count = names.length + random_names.length;
        uint8 array_length = uint8(count);
        Assert.equal(keccak256(abi.encodePacked(array_length)), 1, "Length should be 1.");
        Assert.equal(keccak256(abi.encodePacked(random_names_hash)),
            keccak256(abi.encodePacked(names)),
            "Random and names should be equal.");
    }
}
