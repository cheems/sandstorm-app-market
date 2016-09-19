@import "../../stylesheets/variables";

.app-table {

  margin-left: -$app-container-margin-lr;

  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: flex-start;
  align-items: stretch;

}

.app-item-container {

  display: flex;
  flex-direction: column;
  align-items: stretch;
  justify-content: space-between;
  flex-basis: $app-container-width;
  min-width: $app-container-min-width;
  max-width: $app-container-max-width;
  padding-left: $app-container-margin-lr;
  padding-right: $app-container-margin-lr;
  padding-top: $app-container-margin-tb;
  padding-bottom: $app-container-margin-tb;
  box-sizing: border-box;

  @media (max-width: $small-screen) {
    flex-basis: $app-container-width-small-screen;
  }
  @media (max-width: $large-tablet) {
    flex-basis: $app-container-width-large-tablet;
  }
  @media (max-width: $medium-tablet) {
    flex-basis: $app-container-width-medium-tablet;
  }
  @media (max-width: $large-phone) {
    flex-basis: $app-container-width-large-phone;
    min-width: auto;
  }

  .app-item-inner {

    display: flex;
    flex-direction: column;
    align-items: stretch;
    justify-content: space-between;
    padding-top: $app-container-padding-tb;
    padding-bottom: $app-container-padding-tb;
    padding-left: $app-container-padding-lr;
    padding-right: $app-container-padding-lr;
    box-shadow: $app-container-box-shadow;
    background-color: $app-box-bg;
    box-sizing: border-box;

    .text-section {

      display: flex;
      flex-direction: column;
      justify-content: space-around;
      flex-basis: 100% - $app-image-large-width;

    }

    .image-surround {

      position: relative;

      .image {

        content: "";
        background-size: contain;
        background-position: center;
        background-repeat: no-repeat;
        display: block;
        padding-top: 100%;

      }

    }

    .app-name {

      font-size: $app-name-font-size;
      color: $app-name-text;
      line-height: $app-name-line-height;

    }

    .app-author {

      font-size: $app-author-font-size;
      color: $app-author-text;
      text-transform: uppercase;
      line-height: $app-author-line-height;

    }

    .app-rating {

      font-size: $star-font-size;
      line-height: $star-line-height;

      .dark {
        color: $star-col-dark;
      }
      .light {
        color: $star-col-light;
      }

    }

    .install-price {

      display: flex;
      flex-direction: row;
      justify-content: space-between;
      margin-top: $app-installprice-margin-top;

      .app-install {

        font-size: $app-install-font-size;
        color: $app-install-text;
        background-color: $app-install-bg;
        padding-top: $app-install-padding-tb;
        padding-bottom: $app-install-padding-tb;
        padding-left: $app-install-padding-lr;
        padding-right: $app-install-padding-lr;

        i {

          color: $app-install-icon-col;

        }

        &.installed {



        }

      }

      .app-price {

        font-size: $app-price-font-size;
        color: $app-price-col;

        &.free {
          color: $app-price-free-col;
        }

      }

    }

  }

  &.large {

    flex-basis: max($app-container-width * 3, 100%);
    min-width: $app-container-min-width * 3;
    max-width: $app-container-max-width * 3;

    @media (max-width: $small-screen) {
      flex-basis: max($app-container-width-small-screen * 3, 100%);
    }
    @media (max-width: $large-tablet) {
      flex-basis: max($app-container-width-large-tablet * 3, 100%);
    }
    @media (max-width: $medium-tablet) {
      flex-basis: max($app-container-width-medium-tablet * 3, 100%);
    }
    @media (max-width: $large-phone) {
      flex-basis: max($app-container-width-large-phone * 3, 100%);
      min-width: 0;
    }

    .app-item-inner {

      flex-direction: row;
      align-items: stretch;
      flex-grow: 1;
      flex-shrink: 1;

      .image-surround {

        display: flex;
        flex-basis: $app-image-large-width;
        align-items: stretch;
        overflow: hidden;
        margin-right: $app-image-large-margin-right;

        .image {

          flex-basis: 100%;

        }


      }

      .app-name {

        font-size: $app-name-large-font-size;

      }

      .app-author {

        font-size: $app-author-large-font-size;

      }

      .app-description {

        font-size: $app-description-large-font-size;
        color: $app-description-text;

      }

    }

  }

}
