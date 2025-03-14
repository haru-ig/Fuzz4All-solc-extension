pragma solidity ^0.8.0;
contract Mutated8  {
    function add(uint128 x) public pure returns (uint128) {
        return x / 10;
    }
    function add_uint256_(uint256 x) public pure returns (uint256) {
        return x >> 4;
    }
}

{% endhighlight %}

A contract that uses mutable state variables can run into the following problems:
  - The contract may fail when the state variables are modified, due to concurrent writes.
  - Mutations might change the memory state of the program.
  - Changes to the state variables may be observed by the program.
  - A contract can have inconsistent state, even when the state of the contract does not change or a revert can be used to handle changes.
{% include youtubePlayer.html id=page.youtubeId %}

By including the default compiler settings and the "optimizing" parameter, it is possible to prevent future changes to the mutated contract. This would not be possible in previous versions of the compiler.

It is not possible to use a modifier for any of the functions. To test a modifier, add a line after the function declaration. If the modifier is not used, the compiler adds it for you.

{% highlight solidity %}
{% include youtubePlayer.html id=page.youtubeId %}
{% endhighlight %}

The most notable change from version 0.7 to 0.8 is in the compiler settings. All state variables should be kept local during contract development to avoid any potential side-effects. The contract is more robust and more efficient if it does not expose any mutable state. State variables are also generally kept local so they can be accessed from any location including a public function.

The compiler introduces several new features, such as state variables and the creation of function modifiers.

{% include youtubePlayer.html id=page.youtubeId %}

We also introduced two new methods: the function return statements and the transaction emit statements. We are also introducing a new modifier to prevent reverting even for certain functions.

{% include youtubePlayer.html id=page.youtubeId %}

Finally, we are introducing two new features: a new function type, a new function type modifier, and transaction calls as a function type.

{% include youtubePlayer.html id=page.youtubeId %}

## The Next Steps

As you work through this part of the tutorial you should be able to address several types of problems while maintaining compatibility with the later versions of Solidity.

If you have questions during the workshop, you can come ask us on the course Slack. Alternatively, you can also open an issue in the [GitHub repository](https:

If you have any feedback, ideas, or concerns, please feel free to open a new issue in the [GitHub repository](https:
