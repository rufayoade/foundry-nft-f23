# Foundry NFT Project 🎨

Two NFT implementations:
1. **BasicNft** - Simple ERC721 with IPFS metadata
2. **MoodNft** - SVG NFT with mood flipping

## Quick Start 🚀
```bash
git clone https://github.com/rufayoade/foundry-nft-f23.git
cd foundry-nft-f23
make install
make test
Contract Details 📄
MoodNft
ERC721 compliant with SVG on-chain storage

Two mood states: Happy 😊 and Sad 😢

Dynamic flipping: Owners can change mood with flipMood(tokenId)

No external dependencies: All SVG data stored on-chain

BasicNft
Standard ERC721 implementation

IPFS metadata support

Simple minting with custom token URIs

Makefile Commands 🔧
bash
make install      # Install dependencies
make test         # Run all tests  
make anvil        # Start local blockchain
make deployMood   # Deploy MoodNft
make mintMood     # Mint an NFT
make flipMood     # Flip NFT mood
make format       # Format code
License 📄
MIT
