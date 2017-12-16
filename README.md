# home_synology

## Procedure

### Step1: copy on the Synology server using rsync

For example from another Synology or a USB drive

```bash
rsync -zvh  /volumeUSB1/usbshare/BILDER\ OG\ VIDEOER/BILDER/2016/ /volume/volume1/homes/admin_srv01/buffer_photos/
```

### Step2: Sort the photos

The [sortphotos](https://github.com/andrewning/sortphotos) Python scripts were used to generate year and month based folder structure, and renaming the images

```bash
rsync -zvh  /volumeUSB1/usbshare/BILDER\ OG\ VIDEOER/BILDER/2016/ /volume/volume1/homes/admin_srv01/buffer_photos/
```
