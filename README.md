# WordPress on Render - Free Web Service

This repository is a minimal Docker wrapper around the official WordPress image,
intended for experimentation on a Render Web Service.

## Important

This is a TEST deployment. Render Free Web Services have ephemeral storage.
Do not treat the container filesystem as a permanent backup.

The `.wpress` backup from All-in-One WP Migration should NOT be committed to GitHub.

## Render

Create a Render **Web Service** from this repository and choose Docker as the
runtime. Use the Free instance if available.

WordPress still needs a database. For a temporary experiment, configure the
required WordPress database environment variables with a reachable MySQL/MariaDB
database. Do not put database passwords in this repository.

After WordPress is running, install/enable All-in-One WP Migration and import
your `.wpress` backup.

## Security

Keep secrets in Render Environment Variables, not in GitHub.
