pragma solidity ^0.8.0;
contract L19 is L20 {
    constructor () {
        value = 9;
    }
}

pragma solidity ^0.8.0;
contract L18 {
    L19 public instance;
}
contract L17 {
    L18 public instance;
    constructor () {
        instance = new L18();
    }
}

pragma solidity ^0.8.0;
contract L16 {
    L18 public instance;
    constructor () {
        instance = new L18();
    }
}
contract L15 {
    L18 public instance;
}
contract L14 {
    L15 public instance;
}
contract L13 is L14 {
    constructor () {
        instance = new L15();
    }
}
contract L12 {
    L11 public instance;
}
contract L11 is L12 {
    constructor() {
        instance = new L12();
    }
}
contract L10 {
    L1 public instance;
}
contract L9 is L10 {
    constructor() {
        instance = new L10();
    }
}
contract L8 {
    L7 public instance;
}
contract L7 is L7 {
    constructor () {
        instance = new L7();
    }
}
contract L6 {
    L5 public instance;
}
contract L5 is L6 {
    constructor () {
        instance = new L6();
    }
}
contract L4 {
    L3 public instance;
}
contract L3 is L4 {
    constructor () {
        instance = new L4();
    }
}
contract L2 {
    L20 public instance;
}
contract L1 is L2 {
    constructor () {
        instance = new L20();
    }
}
contract Test {
    uint public counter = 5;
    function check() public pure returns (uint memory) {
      return counter;
    }
}

contract TestC {
  function dummy () public view {

  }
  function check () public pure returns (uint memory) {
    Test test= new Test();
    return test.check();
  }

}
