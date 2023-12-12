# PacerPro Soft Delete Challenge

## Installation

1. Clone the repository:

   ```
   git clone https://github.com/jvelis94/PacerSoftDelete.git

   cd PacerSoftDelete
   ```

2. Install dependencies and create database:

   ```
   bundle install

   rails db:create db:migrate
   ```

3. Implementation:

   ```
   soft_delete: Marks an item as deleted by updating the deleted_at attribute with the current timestamp.
   restore: Restores a soft-deleted item by setting the deleted_at attribute to nil.
   Default Scope: Soft-deleted items are excluded from normal queries by default.
   ```

4. Run Tests
   ```
   bundle exec rspec
   ```
