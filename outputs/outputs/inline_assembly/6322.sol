pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample21 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main() public view returns (MixedContacts memory){
        MixedContacts memory contacts = MixedContacts({y: c, z: b});
        contacts = MixedContacts({y: a, z: b});
        return contacts;
    }
}
```
_Note_: This exercise can be executed directly by clicking [this link](https:
## Next - [Chapter 10: Smart Contracts - Advanced](https:
<button type="button" class="btn btn-link" onclick="topFunction()" id="myBtn" title="Go to top">↑</button>
<script>

window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("myBtn").style.display = "block";
  } else {
    document.getElementById("myBtn").style.display = "none";
  }
}
