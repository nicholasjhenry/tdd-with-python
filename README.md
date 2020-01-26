# Test-Driven Development with Python

Reference: http://www.obeythetestinggoat.com/pages/book.html

## Implementation

This implementation has a number of differences:

1. The development environment is hosted in a Docker container (compared to development environment
   on bare metal using virutal-env)
2. Depdencency management uses a [Pipefile](https://www.ostechnix.com/pipenv-officially-recommended-python-packaging-tool/)
   (instead of a requirements.txt)
3. Heroku is used as the deployment environment. There fore Chapters, 9, 10 and 11 have not
   been implemented.

## Setup

    git clone https://github.com/nicholasjhenry/tdd-with-python.git
    make docker.build
    make docker.up
    make app.server # visit http://localhost:8000

## Testing

    make test.unit
    make test.functional

## Progress

Part 1: The Basics of TDD and Django
- [x] Chapter 1: Getting Django Set Up Using a Functional Test
- [x] Chapter 2: Extending Our Functional Test Using the unittest Module
- [x] Chapter 3: Testing a Simple Home Page with Unit Tests
- [x] Chapter 4: What Are We Doing with All These Tests? (And, Refactoring)
- [x] Chapter 5: Saving User Input: Testing the Database
- [x] Chapter 6: Improving Functional Tests: Ensuring Isolation and Removing Voodoo Sleeps
- [x] Chapter 7: Working Incrementally

Part 2: Web Development Sine Qua Nons
- [x] Chapter 8: Prettification: Layout and Styling, and What to Test About It
- [ ] ~Chapter 9: Testing Deployment Using a Staging Site~
- [ ] ~Chapter 10: Getting to a Production-Ready Deployment~
- [ ] ~Chapter 11: Automating Deployment with Fabric~
- [x] Chapter 12: Splitting our tests into multiple files, and a generic wait helper
- [x] Chapter 13: Validation at the Database Layer
- [ ] Chapter 14: A Simple Form
- [ ] Chapter 15: More Advanced Forms
- [ ] Chapter 16: Dipping Our Toes, Very Tentatively, into JavaScript
- [ ] Chapter 17: Deploying Our New Code

Part 3: More Advanced Topics
- [ ] Chapter 18: User Authentication, Spiking and De-Spiking
- [ ] Chapter 19: Using Mocks to Test External Dependencies or Reduce Duplication
- [ ] Chapter 20: Test Fixtures and a Decorator for Explicit Waits
- [ ] Chapter 21: Server-Side Debugging
- [ ] Chapter 22: Finishing "My Lists": Outside-In TDD
- [ ] Chapter 23: Test Isolation, and "Listening to Your Tests"
- [ ] Chapter 24: Continuous Integration (CI)
- [ ] Chapter 25: The Token Social Bit, the Page Pattern, and an Exercise for the Reader
- [ ] Chapter 26: Fast Tests, Slow Tests, and Hot Lava