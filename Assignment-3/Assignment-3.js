// Switch to (or create) the database
use customer_db;

// CREATE: Create and insert sample customers
db.Customer.insertMany([
  {
    first_name: "Kingsley",
    last_name: "Donkor",
    email: "king@gmail.com",
    phone: "0547793444",
    address: "Fiapre",
    city: "Sunyani",
    country: "Ghana",
    created_at: new Date(),
    updated_at: new Date()
  },
  {
    first_name: "Joseph",
    last_name: "Asare",
    email: "asere@gmail.com",
    phone: "0503718429",
    address: "Old Tafo",
    city: "Kumasi",
    country: "Ghana",
    created_at: new Date(),
    updated_at: new Date()
  },
  {
    first_name: "Benjamin",
    last_name: "Mensah",
    email: "mensah@gmail.com",
    phone: "0554291913",
    address: "Tema",
    city: "Accra",
    country: "Ghana",
    created_at: new Date(),
    updated_at: new Date()
  }
]);

// READ: Select operations
// Select all customers
db.Customer.find();

// Select specific customer by _id (replace with actual ObjectId)
db.Customer.find({ _id: ObjectId("PUT_OBJECTID_HERE") });

// Select customers by city
db.Customer.find({ city: "Sunyani" });

// Select with specific fields
db.Customer.find({}, { first_name: 1, last_name: 1, email: 1 });

// UPDATE: Modify existing records
// Update a customer's phone number (replace with actual ObjectId)
db.Customer.updateOne(
  { _id: ObjectId("PUT_OBJECTID_HERE") },
  { $set: { phone: "0503248731", updated_at: new Date() } }
);

// Update multiple fields (replace with actual ObjectId)
db.Customer.updateOne(
  { _id: ObjectId("PUT_OBJECTID_HERE") },
  { $set: { address: "Krachi", city: "Oti", updated_at: new Date() } }
);

// DELETE: Remove records
// Delete a specific customer (replace with actual ObjectId)
db.Customer.deleteOne({ _id: ObjectId("PUT_OBJECTID_HERE") });

// Delete customers from a specific city
db.Customer.deleteMany({ city: "Accra" });

// Verify the changes
db.Customer.find();