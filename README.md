# RepresentableExample

In this example, we explore how to make use of Swift Extensions and Swift Protocols to pass around different classes of data objects ***represented*** (or disguised) as just one type of object.


Lets take a look at the protocol named `SocialPostRepresentable`
It consists of data fields that we would be displaying to the user.


Now lets look at our ListView Module, where we have a `ListViewCell` component that takes a `SocialPostRepresentable` object as its dataSource.


Now lets take a look at the External folder group. It consists of data models and a service. Lets pretend the contents of this folder are present in an external SDK that we are given access to, but we do not have control to change the contents of. The ExternalService exposes functions for us, one to get a list of 10 Facebook posts and the other to get a list of 10 Tweets.


The magic happens in the extensions we write. In this example, we have 2 extensions (one for each type of external model) in the Extensions folder Group. Each extension conforms to the `SocialPostRepresentable` Protocol, returning computed fields from the data available in each external model.


The DataManager utilizes the external functions to fetch both FBPosts and Tweets, and with the magic of the extensions conforming to the representable protocol, we can combine them together just like that. This is further passed on to our ListViewController, where the list is populated and displayed to the user.
