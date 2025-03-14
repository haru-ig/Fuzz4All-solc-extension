pragma solidity ^0.8.0;
contract Test {
    function add(uint a, uint b) public pure returns (uint c) {
        c = a + b;
    }
}

contract MintingProgram {
    uint[] memory data;

    function mint_if_bigger(uint n) public returns (bool) { return mint_if_bigger(n, data, data) }

    function mint_if_bigger(uint n, uint[] memory a, uint[] memory b) public returns (bool) {
        return mint_if_bigger(n, a, b) && mint_if_bigger(madd(n), a, b);
    }

    function madd(uint x) private pure returns (uint) {
        return (x + 1) * 7;
    }

    function main() public payable {
        uint x = 1;
        uint y = x + 1;
        uint[] memory a = [4, x, 1];
        uint[] memory b = [1, 2, 3];

        data = [x, 1, a.length];

        x = 2;
        y = madd(2) + madd(3);

        if (!mint_if_bigger(10, a, b)) {
            selfdestruct(msg.sender);
        } else {
            selfdestruct(msg.sender);
        }

        assert(mint_if_bigger(3, a, [3]));
        assert(mint_if_bigger(10, [5]));

        bytes memory x = "0x";
        bytes memory y = "0x";

        if (x < "0" && y < "0") {
            y = "";
        } else if (x > "0" && y > "0") {
            x = "";
        }

        if (x == "") {
            Assert.assertEquals(y, 0);
        } else {
            Assert.assertEquals(x, 0);
        }
    }
}


contract ProgramWithException {
    contract EtherErc1155 {
        function mint(address to, address[] memory tokenIds, uint[][] memory amounts) public { }

        function safeMint(address to, address[] memory tokenIds, uint[][] memory amounts) public {
            assert(mint(to, tokenIds, amounts));
        }
    }

    function getEther(EtherErc1155 _token) public payable returns (uint256) {
        return 0;
    }
}

contract ProgramWithAssertFailed {
    function assertFailed() public pure {
        uint 2;
    }
}
