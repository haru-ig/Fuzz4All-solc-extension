pragma solidity ^0.8.0;
contract CallMutablilityThree {
  bytes public data;
  constructor ( bytes memory _data) {
    data = _data;
    data[1] = 0;
    value = 0;

    }
}

pragma solidity ^0.8.0;
contract CallMutablilityTwo {
  bytes public data;
  constructor ( bytes memory _data) {
    data = _data;
    data[1] = 0;
    value = 0xffffffffc00da00000000000000000000000000000000000000000000000000000;

  }
}

pragma solidity ^0.8.0;
contract CallMutablilityOne {
  bytes public data;
  uint public value;
  constructor ( bytes memory _data) {
    data = _data;
    value = 0;

    }
}

pragma solidity ^0.8.0;
contract CallMutabiliy {
  bytes public data;
  uint public value;
  constructor ( bytes memory _data) {
    data = _data;
    data[0] = 0x600000806001800a815260200191505060020160016000819055505090500190506001019060016038101019082019190600052602060002090519081018051600101906020018082156000396000f300608060200160002
