pragma solidity ^0.8.0;
contract MutateExample {
    uint8 internal data;
    function set(uint8 _data) public {
        data = _data;
    }
    function get() public view returns (uint8) {
        return data;
    }
    function foo(uint8 _a, uint8 _b) private returns (uint256) {
        uint8 d = data;
        _a -= 5 * _b;
        _a /= _b;
        return (_a / 5 + uint8(_a % 5 + 1)) * _b;
    }
    function bar(uint8 _a, uint8 _b) public {
        uint256 c = foo(_a, _b);
        require(c >= 5, 'Invalid');
    }
}
{
  "version": "0.8.10",
  "lang": "Solidity",
  "source": "pragma solidity >=0.4.6;<comment>\n</comment>\ncontract MutateExample {",
  "names": [
    "data"
  ],
  "languageVersion": 90019,
  "settings": {
    "remappings": [
      {
        "previous": "0xb4df37282634b787dc67174145e367dcec5525ba",
        "mapping": "128 226 152 256"
      }
    ]
  }
}
