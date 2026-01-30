# Foundry NFT Project

## Contract Details 📄

### MoodNft
- **ERC721 compliant** with SVG on-chain storage
- **Two mood states**: Happy 😊 and Sad 😢  
- **Dynamic flipping**: Owners can change mood with `flipMood(tokenId)`
- **No external dependencies**: All SVG data stored on-chain

### BasicNft
- **Standard ERC721** implementation
- **IPFS metadata** support
- **Simple minting** with custom token URIs

## Makefile Commands 🔧
```bash
make install      # Install dependencies
make test         # Run all tests  
make anvil        # Start local blockchain
make deployMood   # Deploy MoodNft
make mintMood     # Mint an NFT
make flipMood     # Flip NFT mood
make format       # Format code

## License
MIT
