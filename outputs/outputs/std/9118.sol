pragma solidity ^0.8.0;
contract CompiledExampleContract {
    uint256 _value1;
    uint256 _value2;
    function increment() public { _value1 += 1; _value2 += _value1; _value2 += _value1; _value2 += _value1; }
    function getValue() public view returns (uint256) { return _value1; }
}
```

---

# Appendix

## Appendix B: An Example of Providing an Untrusted Contract

---

## Appendix C: An Example of Accessing a Trusted Webpage

---

## Appendix D: An Example of Reading a File's Content

---

## Appendix E: Adding Cryptographic Secure Randomness into Contracts

---
