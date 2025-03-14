pragma solidity ^0.8.0;
contract Solidity {
    uint I = 7;

    function setI() public {
        i = i + 3;
    }
}

pragma solidity ^0.8.0;
contract Solidity {
    uint I = 7;
    function setI() public {
        I = I / 12 * 2;
    }
    function getI() public view returns(uint) {
        return I;
    }
}

pragma solidity ^0.8.0;
contract NoCompiler {
    function noCompilerContractFunction() public {}
}

pragma solidity ^0.8.0;
contract Test {
    uint constant ONE = 18774142003281243412387887160984508749821;
    uint constant ZERO = 84581102028127023458758155324518935081;
    function test() public pure returns(uint) {
        return ONE;
    }
}

pragma solidity ^0.8.0;
contract Solidity {
    uint public i;
    uint public j = 77;
    function print() public {
        i = 777;
    }
}

contract NonInlineable {
    uint public i;
    function setIndex(uint newI) public {
        i = newI;
    }
}

pragma solidity ^0.8.0;
contract InlineAssembly {
    assembly {
      let i := 7;
      i := i + 2;
    }
}

pragma solidity ^0.8.0;
contract InlineAssembly {
    assembly {
      let i := 7;
      i := i + $2;
    }
}

pragma solidity ^0.8.0;
contract InlineAssembly {
    assembly {
      let i := 7;
      for {
        let j := 0;
        j < 6;
        j := add(j, 1)
      } {
        i := i + i;
      }
    }
